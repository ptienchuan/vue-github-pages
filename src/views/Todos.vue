<template>
  <div>
    <h1>Todo list</h1>
    <div>
      <div v-if="!todos.length">
        <Button v-on:click="fetchTodos" :style="'button'">Fetch list</Button>
        <img
          v-if="loading"
          alt="Loading"
          src="@/assets/spinner.gif"
          class="image"
        />
      </div>
      <div v-else>
        <TodoItem v-for="todo in todos" :key="todo.id" :todo="todo" />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import TodoItem from '@/components/TodoItem.vue';
import Button from '@/components/Button.vue';
import TodoService, { Todo } from '@/services/todo';

export default defineComponent({
  components: {
    TodoItem,
    Button,
  },
  setup() {
    const loading = ref(false);

    const todos = ref<Todo[]>([]);
    const fetchTodos = async () => {
      loading.value = true;
      const fetchedTodos = await TodoService.get<Todo[]>('/todos');
      loading.value = false;
      todos.value = fetchedTodos.data.slice(0, 10);
    };

    return { loading, todos, fetchTodos };
  },
});
</script>

<style lang="scss" scoped>
.button {
  display: block;
  margin: auto;
}
</style>
