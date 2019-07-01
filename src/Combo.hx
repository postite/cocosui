enum ComboVal{
    ONE;
    TWO;

}
class Combo extends coconut.ui.View{
     @:attribute var data:tink.pure.List<ComboVal>=[];
     @:state var value:String ="z";
     @:attribute var done:String->Void;
     @:attribute var label:String="combo";

  public function render()
    <div>
     <Label label={label} />
    <select onchange={function(e)done(value=untyped(e.target).value)}>

    {
        for (a in data)
        <option >{Std.string(a)}</option>
    }

    </select>
    <ValueBox value={Std.string(value)} />
    </div>
    ;

}