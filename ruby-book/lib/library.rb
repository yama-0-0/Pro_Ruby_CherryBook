#①標準ライブラリ
 # ・組み込みライブラリ
     # String,Integer,Array,Hash
 # ・その他
     # date,csv,json,yaml,fileutils

#②外部ライブラリ
 # 別途インストールが必要
     # bundler,rails,rspec,nokogiri


#標準ライブラリの読み込み
 require 'date'
 puts Date.today  #requireで読み込まないとエラーとなる。

#作成したプログラムの読み込み
 require './library.rb' # ./（現在のディレクトリ）, /(ルートディレクトリ)を先頭につける

#ファイルを編集した場合の読み込みには「load」を使う。「require」では一度読み込んだ後は変更されない。
 load './library.rb'

#「require」は自分のファイルが存在するディレクトリがパスの起点となる。そのため、別ディレクトリのファイルを読み込む場合は「require_relative」を使う。
 require_relative '../book/book.rb' #「../」は一つ上のディレクトリを示す。
