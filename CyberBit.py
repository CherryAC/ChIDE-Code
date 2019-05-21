# The aim of this program is to encode the message "Cats" using a Caesar Cipher,
# and then to send that message to another microbit
# after the coded message is send, the recipient microbit will get the decoded message

from microbit import *
import radio

radio.on()
radio.config(channel=25) # This is the channel the microbit I am sending the coded message to is on
def encode(text, shift):
    encoded = ""
    for c in text:
        val = ord(c) + shift
        encoded = encoded + chr(val)
        
    return encoded

# Make a message, encode, and display
msg = "Cats"
code_msg = encode(msg, 3)

radio.send(code_msg)

while True:
    # Check radio
    msg = radio.receive()
    if msg:
        clear_msg = encode(msg, -3)
        display.scroll(clear_msg, wait=False, loop=True)
