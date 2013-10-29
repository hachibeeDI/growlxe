package growl;

import sys.io.Process;


using Lambda;

class Growl {

    public function new() {
    }

    public function notify(title, msg): Void {
        var gp =
            gen_notify(
                gen_title(title)
                    .concat(gen_msg(msg))
            );
        gp.close();
    }

    private static function gen_notify(args: Array<String>): Process {
        var p = new Process('growlnotify', args);
        return p;
    }

    private static function gen_title(title: String): Array<String> {
        return ["-t", title];
    }

    private static function gen_msg(msg: String): Array<String> {
        return ["-m", msg];
    }
}

