# Sample code from Programing Ruby, page 635
      require 'base64'
      str = 'VGhpcyBpcyBsaW5lIG9uZQpUaGlzIG' +
            'lzIGxpbmUgdHdvClRoaXMgaXMgbGlu' +
            'ZSB0aHJlZQpBbmQgc28gb24uLi4K'
      puts Base64.decode64(str)
