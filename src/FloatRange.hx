class FloatRange extends coconut.ui.View{
    @:attribute var step:Int = .1;
    @:state var value:Float = 0.;
    @:attribute var done:Float->Void;
    @:attribute var label:String="floatrange";

  public function render()
    <div>
    <Label label={label} />
    <input name="floatrange" type="range" oninput={function(e)done(value=untyped(e.target).value)} min="0"  max= "1" step=".1"/>
    <ValueBox value={Std.string(value)} />
    </div>
    ;

}