Everything from the Shims directory (except this file) needs to be copied to c:\bc45\bin.
This was done to make setup as simple as possible.
All of the shims are text files and can be deciphered by most software engineers.

NetBeans passes filenames using Unix '/' instead of the Windows '\'.
The shims convert all occurrences of '/' into '\' for the legacy tools.
!!It is important if you add switches to use '-' and not use '/'!!
