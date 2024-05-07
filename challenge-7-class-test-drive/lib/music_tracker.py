class MusicTracker():

    def __init__(self):
        self.music_tracker = []

    def add(self, track):
        if not(isinstance(track, str)) or track == "" or track.isspace():
            raise Exception("Invalid input")
        elif track in self.music_tracker:
            raise Exception("Song is already in list")
        else:
            self.music_tracker.append(track)
    
    def view_list(self):
        return self.music_tracker