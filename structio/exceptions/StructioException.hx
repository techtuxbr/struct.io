package structio.exceptions;

class StructioException{
    public var errorMsg:String;
    public var structureLenght:Int;

    public function new(?errorMsg:String, ?structureLenght:Int){
        this.errorMsg = errorMsg;
        this.structureLenght = structureLenght;
    }

}