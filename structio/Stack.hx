package structio;

class Stack<T>{
    private var stack:Array<T>;
    public var length:Int;
    var inter:Int;

    public function new(){
        this.stack = new Array<T>();
        this.length = 0;
        this.inter = 0;
    }

    public function add(value:T):Void {
        this.stack.unshift(value);
        updateStackLength();
    }

    public function remove():T {
        var element:T =  this.stack.shift();
        updateStackLength();
        return element;
    }

    public function toArray():Array<T>{
        var tempArray:Array<T> = new Array<T>();
        for(element in this.stack){
            tempArray.push(element);
        }
        return tempArray;
    }

    private function updateStackLength():Void{
        this.length = this.stack.length;
    }

    public function getLength():Int{
        return this.length;
    }

        /* Iterator stuff */
    public function hasNext() {
        var result = this.inter < this.length;
        if(!result){
            this.inter = 0;
        }
        return result;
    }

    public function next() {
        return this.stack[this.inter++];
    }
}