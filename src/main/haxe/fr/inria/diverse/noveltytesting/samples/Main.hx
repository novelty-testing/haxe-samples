package fr.inria.diverse.noveltytesting.samples;

import fr.inria.diverse.noveltytesting.samples.FunctionsImpl;

class Main {
    public static function main()  {
        var fun = new FunctionsImpl();

        var test = "1";
        for (i in 0...11) {
            test = fun.lookAndSay(test);
            trace(test);
        }

        var x = fun.fibIter(10);
        trace(x);

        var j = fun.compare("bla","blabla");
        trace(j);
    }
}



