require 'erb'
require 'yaml'

# YAMLファイルを読み込む
config = YAML.load_file('config.yml')['mandelbrot']

# マンデルブロ集合の設定を取得する
width = config['width']
height = config['height']
x_min = config['x_min']
x_max = config['x_max']
y_min = config['y_min']
y_max = config['y_max']
max_iterations = config['max_iterations']
incremental_step = config['incremental_step']

File.open('./www/index.html', 'w').write(ERB.new(File.read("index.html.erb")).result(binding))
