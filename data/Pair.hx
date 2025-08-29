package wildcat;

class Pair<T,G> {

    public var first : T;
    public var second : G;

    public function new( ?_first : T, ?_second : G ) {
        first = _first;
        second = _second;
    }
}