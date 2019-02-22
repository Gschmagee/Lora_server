package de.adrianwilke.acotspjava;

import java.util.ArrayList;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        AcoTsp shorter = new AcoTsp();
        String[] shortResult = shorter.runAco(false, args);
        String[] fullResult = null;
        ArrayList<String> argslist = new ArrayList<String>(Arrays.asList(args));
        System.out.println("arglist: " + argslist);
        if (argslist.contains("-p")) {
            int idx = argslist.indexOf("-p");;
            argslist.remove(idx + 1);
            argslist.remove(idx);
            AcoTsp full = new AcoTsp();
            fullResult = full.runAco(true, argslist.toArray(new String[0]));
        }

        InOut.generateMap(fullResult, shortResult, args);
    }

}
