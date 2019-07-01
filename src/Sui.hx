import coconut.ui.View;

class Sui extends View{

    public function render()
        <div class="pipo">
        <FloatRange done={gette}/>
        <IntRange done={gette} />
        <Booler done={gette}/>
        <Combo data={[ONE,TWO,ONE]}done={gette}/>
        </div>;

    public function gette<T>(r:T){
        var st=Std.string(r);
        trace('r=$st');
    }
}