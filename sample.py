import pandas as pd

def extract_data_from_excel(excel, sheet_name):
    data = pd.read_excel(excel, sheet_name=sheet_name)
    extracted_data = data.to_dict(orient='records')
    return extracted_data

def add(num1 : int, num2: int) -> int:
    return num1 + num2

def sub(num1: int, num2: int) -> int:
    return num1 - num2