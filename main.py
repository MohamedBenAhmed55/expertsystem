import sys
from PySide6.QtWidgets import QApplication, QMainWindow
from PySide6.QtUiTools import QUiLoader

class MyWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setMinimumSize(800, 400)  # Set minimum window size

        self.setWindowTitle("Resizable Window")
        # Load .ui file
        loader = QUiLoader()
        self.ui = loader.load('Design.ui')  # Replace 'your_ui_file.ui' with your .ui file

        # Connect button click to function
        self.ui.pushButton.clicked.connect(self.StartDignosis)
        self.ui.pushButton_2.clicked.connect(self.AddSymptomList)

        # Set the UI as the central widget
        self.setCentralWidget(self.ui)

    def StartDignosis(self):
        # Handle button click functionality
        print("Start Diagnosis")
    def AddSymptomList(self):
        print("Added to the Symptom List")    

def run_app():
    app = QApplication(sys.argv)
    window = MyWindow()
    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    run_app()
