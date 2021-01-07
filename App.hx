package;

class App {

	static function run(script){
		var parser = new hscript.Parser();
		parser.allowJSON = true;
		var program = parser.parseString(script);
		var interp = new hscript.Interp();
		var require = (str,?vars) -> {
			var f    = "./"+str+".hxs";
			var code = sys.io.File.getContent(f);
			var lines = code.split("\n");
			// https://github.com/HaxeFoundation/hscript/issues/100
			//for( x in 0...lines.length ){ 
			//	lines[x] = lines[x]+";";
			//	lines[x] = ~/;;/;/g;
			//}
			return run(lines.join("\n"));
		}
		interp.variables.set("console",{
			log: haxe.Log.trace
		});
		interp.variables.set("require",require);
		return interp.execute(program);
	}

	static function main(){
		var script = sys.io.File.getContent("./app.hxs");
		trace( run(script) );
	}
}
