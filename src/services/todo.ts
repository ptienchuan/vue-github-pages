import axios from 'axios';

const TodoService = axios.create({
  baseURL: 'https://jsonplaceholder.typicode.com',
});

interface Todo {
  id: number;
  userId: number;
  title: string;
  completed: boolean;
}

export { Todo };
export default TodoService;
