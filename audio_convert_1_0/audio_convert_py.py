import os 
import glob 
import subprocess from tkinter
import Tk, filedialog

# List of audio formats to convert

extensions = ['.aif', '.wav', '.flac', '.mp2', '.mp3', '.ogg', '.aac', '.alac', '.wma', '.m4a']

# Function to prompt user to select folder

def select_folder(): 
    # Create Tkinter root window root = Tk() root.withdraw()

# Open file dialog to choose folder
folder_selected = filedialog.askdirectory()

# Destroy the root window
root.destroy()

return folder_selected

# Function to convert audio files

def convert_audio(input_path, output_folder, max_quality): current_filename, current_extension = os.path.splitext(input_path) output_extension = current_extension.lower() input_extension = current_extension.lower()[1:] # remove the leading dot

# If the input extension is in the list but it's not same as output extension, we convert it
if input_extension in extensions and input_extension != output_extension:
    output_path = os.path.join(output_folder, f"{current_filename}.wav")
    
    # Use ffmpeg to convert the audio file
    cmd = ["ffmpeg", "-i", input_path, "-y", "-acodec", "pcm_s16le", "-ac", "2", "-ar", "44100", "-ab", f"{max_quality}k", output_path]
    subprocess.call(cmd)

# Get the input and output folder paths from user

print("Please select the folder with the audio files to convert:") input_folder = select_folder() if not input_folder: print("No input folder selected. Exiting program!") exit()

print("Please select the output folder to save the converted audio files:") output_folder = select_folder() if not output_folder: print("No output folder selected. Exiting program!") exit()

# Get maximum quality for output images

max_quality = int(input("Enter maximum quality for output audio files (in kbps): "))

# Process all audio files in the input folder

audio_files = glob.glob(f"{input_folder}/.") for audio_file in audio_files: convert_audio(audio_file, output_folder, max_quality)

print("Conversion completed successfully!")

# softy_plug