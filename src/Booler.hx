class Booler extends coconut.ui.View{
  
    @:state var value:Bool = false;
    @:attribute var done:Bool->Void;
    @:attribute var label:String="booler";

  public function render()
    <div>
    <Label label={label} />
    <input name="booler" type="checkbox" oninput={function(e)done(value=untyped(e.target).checked)} />
    <ValueBox value={Std.string(value)} />
    </div>
    ;

}