#!/bin/bash

DSA_FILE="dsa_questions.txt"

# Make sure the file exists
touch $DSA_FILE

while true; do
    echo ""
    echo "========== DSA QUESTION MANAGER =========="
    echo "1. Add a new DSA question"
    echo "2. List all DSA questions"
    echo "3. Exit"
    echo "4. Update an existing DSA question"
    echo "==========================================="
    read -p "Choose an option (1-4): " choice

    case $choice in
        1)
            read -p "Enter your DSA question: " question
            echo "$question" >> $DSA_FILE
            echo "✅ Question saved successfully!"
            ;;
        2)
            echo ""
            echo "📚 Your DSA Questions:"
            echo "-------------------------------------------"
            nl -w2 -s'. ' $DSA_FILE
            echo "-------------------------------------------"
            ;;
        3)
            echo "👋 Exiting... Happy Coding!"
            break
            ;;
        4)
            echo ""
            echo "🛠️ Select a question to update:"
            nl -w2 -s'. ' $DSA_FILE
            echo "-------------------------------------------"
            read -p "Enter the question number you want to update: " qnum
            total_questions=$(wc -l < "$DSA_FILE")

            if [ "$qnum" -le "$total_questions" ] && [ "$qnum" -ge 1 ]; then
                read -p "Enter the updated DSA question: " new_question
                # Escape slashes and special characters if needed
                new_question_escaped=$(printf '%s\n' "$new_question" | sed 's/[&/\]/\\&/g')
                sed -i "${qnum}s/.*/$new_question_escaped/" $DSA_FILE
                echo "✅ Question updated successfully!"
            else
                echo "❌ Invalid question number."
            fi
            ;;
        *)
            echo "⚠️ Invalid choice. Please enter 1, 2, 3, or 4."
            ;;
    esac
done

