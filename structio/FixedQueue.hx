package structio;

import structio.exceptions.StructioException;

class FixedQueue<T> extends Queue<T>{
    private var size:Int;

    public function new(size:Int){
        super();
        if(size >= 0){
            this.size = size;
        }else{
            this.size = 0;
        }
    }

    override function add(value:T) {
        if(this.length < this.size){
            super.add(value);
        }else{
            throw new StructioException('The Queue reached the maximum size of ${this.size}.',this.length);
        }
    }

    public function changeSize(newSize:Int){
        var previousSize:Int = this.size;
        if(newSize >= 0){
            this.size = newSize;
        }else{
            this.size = previousSize;
        }
    }

    public function getSize():Int{
        return this.size;
    }

}