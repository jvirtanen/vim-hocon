# hocon.vim

Syntax highlighting for the HOCON language used by the [Config][] library and
many Java Virtual Machine (JVM) applications and frameworks, including [Akka][]
and [Play Framework][].

  [Config]: https://github.com/lightbend/config
  [Akka]: https://akka.io
  [Play Framework]: https://www.playframework.com

## Installation

Install using Vim's built-in package management:
```
mkdir -p ~/.vim/pack/jvirtanen/start
cd ~/.vim/pack/jvirtanen/start
git clone git://github.com/jvirtanen/vim-hocon.git
```

To handle all files with the `.conf` extension as HOCON, add the following line
into your `.vimrc`:
```
autocmd BufNewFile,BufRead *.conf set filetype=hocon
```

## License

Copyright 2021 Jussi Virtanen.

Distributed under the same terms as Vim itself. See `:help license` for
details.
