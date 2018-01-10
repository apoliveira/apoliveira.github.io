var fs   = require('fs');
var path = require('path');
var util = require('util');
var yaml = require('js-yaml');

try {

  var getContents = function(name) {
    var filename = path.join(__dirname, '_data/', name),
        contents = fs.readFileSync(filename, 'utf8'),
        data = yaml.load(contents);
    return data;
  }

} catch(err) {
  console.log(err.stack || string(err));
}

var files = fs.readdirSync("_data/");

var info = {};

files.forEach(function(file) {
  var name = path.basename(file, '.yml');
  info[name] = getContents(file);
})

var dump = yaml.dump(info);

if(fs.existsSync('data.yml') ) {
	fs.unlinkSync('data.yml');
}

fs.appendFileSync('data.yml', '---\n'); //because YAML
fs.appendFileSync('data.yml', dump);
fs.appendFileSync('data.yml', '---\n'); //because YAML
