About
------

This is a way to **redirect 2captcha's service through our service**.

In other words, if you have software that works with 2captcha's service, using the gate will allow you to **use our service, with the same software**,
without any modifications to the software.

This is achieved by running a batch program, which writes some information into the ***hosts*** file of the Windows operating system.

The last step, is to **replace 2captchas access token with our token**. In this way, the programs will run even though they were built for 2captcha, but in reality our service will be used for completion.

-------
The batch program called ```enable_gate.bat``` can be found inside 
the ***scripts*** directory
