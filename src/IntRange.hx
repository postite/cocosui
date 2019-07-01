class IntRange extends coconut.ui.View{
    @:attribute var step:Int = 1;
    @:attribute var max:Int=100;
    @:attribute var min:Int=0;
    @:state var value:Int = 0;
    @:attribute var done:Int->Void;
    @:attribute var label:String="intRange";

  public function render()
    <div>
     <Label label={label} />
    <input  name="intRange" type="range" oninput={function(e)done(value=untyped(e.target).value)} min='{min}'  max='{max}' step='{step}'/>
    <ValueBox value={Std.string(value)} />
    </div>
    ;

}