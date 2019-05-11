package structio;

class Queue<T>{

    private var queue:Array<T>;
    private var length:Int;
    var inter:Int;

    public function new(){
        this.queue = new Array<T>();
        this.length = queue.length;
        this.inter = 0;
    }

    public function add(value:T):Void {
        this.queue.push(value);
        updateQueueLength();
    }

    public function remove():T {
        var element:T =  this.queue.shift();
        updateQueueLength();
        return element;
    }

    public function toArray():Array<T>{
        var tempArray:Array<T> = new Array<T>();
        for(element in this.queue){
            tempArray.push(element);
        }
        return tempArray;
    }

    private function updateQueueLength():Void{
        this.length = this.queue.length;
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
        return this.queue[this.inter++];
    }
}