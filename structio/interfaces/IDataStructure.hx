package structio.interfaces;

interface IDataStructure<T>{
    public function forEach(forEachFunction:T->Void):IDataStructure<T>;
    public function first(firstFunction:T->Bool):T;
}