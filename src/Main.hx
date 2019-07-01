import js.Browser.document as doc;
import coconut.Ui.hxx;
class Main {
	static function main() {
		trace("Hello, world!");
		doc.addEventListener("DOMContentLoaded",init);
		
	}

	static function init(e){
		var wrap= doc.querySelector("#sui");
		
		coconut.ui.Renderer.mount(wrap, hxx('<Sui />'));
	}
}
