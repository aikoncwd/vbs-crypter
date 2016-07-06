# Information

This small script will encrypt (encode) any VBS file. The encryption is dynamic, if you encrypt the same VBS file 5 times, you will get 5 different encrypted files (with different MD5 hash, etc). You can try to re-encrypt the same file, but the size of the final file will grow fast.


# Usage

Download vbs-crypter.vbs, then drag&drop your VBS file over vbs-crypter.vbs, in a few seconds a new file will be created on the same directory with the code encrypted. You can identify the encrypted file because it will be renamed, appending a dash at then end of file name.


# Example

Imagine you have the following VBS code:

    A = 2 * 5
    MsgBox "This is a test = " & A

After applying vbs-encrypter, the code will be encoded into this:

    Execute(chr(11+54)& chr(1312/41)& chr(28+33)& chr(8*4)& chr(53-3)& chr(-64+96)& chr(3444/82)& chr(-60+92)& chr(4293/81)& chr(832/64)& chr(85-75)& chr(144-67)& chr(4945/43)& chr(31+72)& chr(1+65)& chr(8103/73)& chr(6360/53)& chr(896/28)& chr(132-98)& chr(60+24)& chr(155-51)& chr(6930/66)& chr(97+18)& chr(125-93)& chr(13+92)& chr(1265/11)& chr(4*8)& chr(1*97)& chr(1984/62)& chr(124-8)& chr(88+13)& chr(167-52)& chr(184-68)& chr(1408/44)& chr(71-10)& chr(109-77)& chr(-26+60)& chr(640/20)& chr(-33+71)& chr(4*8)& chr(21+44))

These two codes are equal, but the second one is encrypted/encoded with vbs-crypter :smile:

### Crypter or Encoder?

In fact, this script encodes VBS files. Any experienced user can decode the encrypted file manually. This just adds a layer of obfuscation to your files, and can bypass most of AV
