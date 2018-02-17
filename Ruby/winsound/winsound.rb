require 'win32/sound'
include Win32

# Play a system sound
Sound.play("SystemAsterisk",Sound::ALIAS)