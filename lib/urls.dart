const ip = "192.168.100.86";

const  retrieveUrl = 'http://$ip:8000/notes/';
// final deleteUrl = Uri.parse('http://192.168.0.103:8000/notes/id/');
// final retrieveUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts');
// final retrieveUrl = Uri.parse('http://10.0.2.2/notes/');

// retrieveUrl() {
//   Uri.parse('http://192.168.0.103:8000/notes/');
// }

deleteUrl(int id) => 'http://$ip/notes/$id/delete';
