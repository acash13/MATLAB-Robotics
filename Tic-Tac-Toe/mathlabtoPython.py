
# mathlabtoPython.py
# # WORKS
import numpy as np
import google.generativeai as genai
# import os

# newmatrix = np.array(matrix_board) if isinstance(matrix_board, np.ndarray) else np.array(matrix_board.tolist())
# print("After conversion:")
# print(newmatrix)
# martix_str = str(newmatrix)
    # Create the generative model request
API_KEY = 'AIzaSyDI98IF5NSXAY_wc0zAHGaS2LNs-l0IwI4'
genai.configure(api_key=API_KEY)
model = genai.GenerativeModel("gemini-1.5-flash")
print(martix_str)
response = model.generate_content("playing a game of tic-tac-toe. board ="+ martix_str +".The board matrix shows the position of previous moves. letter O is 1, and letter X is -1.the board position is from 1 to 9.martix Index is[1 2 3;4 5 6;7 8 9]. If you are X(-1) what is your next move?You must pick empty spot(0),DO NOT pick a spot that already has a 1 or -1.ONLY write out:New_position = ?.New_position is the board position(index)")
print(response.text)
result =response.text