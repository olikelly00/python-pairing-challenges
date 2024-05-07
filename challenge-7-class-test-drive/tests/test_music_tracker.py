import pytest
from lib.music_tracker import *

def test_no_input_means_empty_string():
    music_tracker = MusicTracker()
    assert music_tracker.view_list() == []


def test_list_updates_when_new_songs_added():
    music_tracker = MusicTracker()
    music_tracker.add("Living on a Prayer")
    music_tracker.add("Crazy in Love")
    assert music_tracker.view_list() == ["Living on a Prayer", "Crazy in Love"]

def test_that_input_is_a_string():
    music_tracker = MusicTracker()
    music_tracker.add("I wrote a song")
    with pytest.raises(Exception) as e: 
        music_tracker.add(19)
    error_message = str(e.value)
    assert error_message == "Invalid input"

# def test_that_input_is_not_empty_string():
#     music_tracker = MusicTracker()
#     with pytest.raises(Exception) as e: 
#         music_tracker.add("")
#     error_message = str(e.value)
#     assert error_message == "Invalid input"
    

def test_that_track_not_already_in_list():
    music_tracker = MusicTracker()
    with pytest.raises(Exception) as e: 
        music_tracker.add("Song_1")
        music_tracker.add("Song_2")
        music_tracker.add("Song_1")
    error_message = str(e.value)
    assert error_message == "Song is already in list"

def test_that_input_is_not_all_whitespace():
    music_tracker = MusicTracker()
    with pytest.raises(Exception) as e: 
        music_tracker.add("         ")
    error_message = str(e.value)
    assert error_message == "Invalid input"
    