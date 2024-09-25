./bin/ollama serve &

pid=$!

sleep 5

echo "Pulling Zephyr model"
ollama pull zephyr:7b-beta

wait $pid

# Wait a bit for the pull to complete, or check if the model pull is complete
sleep 5  # Adjust this sleep duration as needed

# Run the Zephyr model
echo "Running Zephyr model"
ollama run zephyr:7b-beta

# Keep the server running by waiting for the initial Ollama process
wait $pid