package fr.inria.diverse.noveltytesting.samples;

class FunctionsImpl implements Functions  {

    public function new() {}

    public function compare(a: String, b: String): Int {
        var a = a.toLowerCase();
        var b = b.toLowerCase();
        if (a < b) return -1;
        if (a > b) return 1;
        return 0;
    }

    public function lookAndSay(s: String): String {
        if (s == null || s == "") return "";

        var results = "";
        var repeat = s.charAt(0);
        var amount = 1;
        for (i in 1...s.length) {
            var actual = s.charAt(i);
            if (actual != repeat) {
                results += amount;
                results += repeat;
                repeat = actual;
                amount = 0;
            }
            amount++;
        }
        results += amount;
        results += repeat;

        return results;
    }

    public function fibIter(limit: Int): Int {
        var current: Int;
        var nextItem: Int;
        var lim: Int;

        current = 0;
        nextItem = 1;
        lim = limit;


        function hasNext() return limit > 0;

        function next() {
            limit--;
            var ret = current;
            var temp = current + nextItem;
            current = nextItem;
            nextItem = temp;
            return ret;
        }
        return lim;
    }
}


