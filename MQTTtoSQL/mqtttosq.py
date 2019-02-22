import paho.mqtt.client as mqtt
import MySQLdb
from time import localtime, strftime

def on_connect(client, userdata, flags, rc):
    print("Connected with result code " + str(rc))

    client.subscribe("application/#")

def on_message(client, userdata, msg):
    #print(msg.topic + " " + str(msg.payload))
    data = str(msg.payload)
    binstatus = "F"
    if data.find('data') > 0:
        data2 = data[data.find('data')+7:-2]
        if data2.find('AQ') >= 0:
            binstatus = "1"
        elif data2.find('Ag') >= 0:
            binstatus = "2"
        elif data2.find('Aw') >= 0:
            binstatus = "3"
        elif data2.find('BA') >= 0:
            binstatus = "4"
        else:
            binstatus = "F"
    if data.find('devEUI') > 0:
        if data.find('txInfo')  > 0:
            deveui = data[data.find('devEUI')+9:data.find('txInfo')-3]
        elif data.find('devAddr')  > 0:
            deveui = data[data.find('devEUI')+9:data.find('devAddr')-3]
    writesql(deveui,binstatus)

def writesql(id,filllevel):
    time = strftime("%d-%m-%Y %H:%M:%S", localtime())
    binid = int(id)
    print(binid,filllevel,time)
    #if(binid >9):
    #    cur.execute("SELECT id FROM biobin WHERE id=%s",(str(binid)))
    #    if cur.fetchone() is None:
    #        cur.execute("""INSERT INTO biobin (id, filllevel, lastfl,street,timestamp,lastfltimestamp) VALUES (%s,%s,'F','street',%s,%s)""",(str(binid),oldfl,time,time))
    #        print("newEntry")
        
    if filllevel != 'F':
        oldfl = filllevel
        oldtime = time
        cur.execute("""UPDATE biobin SET lastfl = %s, lastfltimestamp =%s WHERE id = %s""",(oldfl,oldtime,str(binid)))

    cur.execute("""UPDATE biobin SET filllevel= %s, timestamp =%s WHERE id = %s""",(filllevel,time,str(binid)))
    db.commit()

def connectMysql():
    db = MySQLdb.connect()

    return db

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message

client.connect("localhost", 1883, 60)

db = connectMysql()
cur = db.cursor()

client.loop_forever()
db.close()
