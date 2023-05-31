//current ip address of local machine is:
const ip = "192.168.224.60";

final retrieveNotesUrl = Uri.parse('http://$ip:8000/notes/');
final createUrl = Uri.parse('http://$ip:8000/notes/create/');
updateUrl(int id) => Uri.parse('http://$ip:8000/notes/$id/update/');
deleteUrl(int id) => Uri.parse('http://$ip:8000/notes/$id/delete/');
retrieveNoteUrl(int id) => Uri.parse('http://$ip:8000/notes/$id/');
// final retrieveUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');

