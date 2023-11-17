// script.js
document.addEventListener('DOMContentLoaded', function () {
    const calculateButton = document.getElementById('calculateButton');
    calculateButton.addEventListener('click', calculate);

    function calculate() {
        const planetA = document.getElementById('planetA').value;
        const planetB = document.getElementById('planetB').value;

        // Send the selected planets to the server for calculation
        fetch('calculate.php', {
            method: 'POST',
            body: JSON.stringify({ planetA, planetB }),
            headers: {
                'Content-Type': 'application/json'
            }
        })
        .then(response => response.json())
        .then(data => {
            const distanceResult = document.getElementById('distanceResult');
            const travelTimeResult = document.getElementById('travelTimeResult');

            distanceResult.textContent = `Distance between ${planetA} and ${planetB}: ${data.distance} km`;
            travelTimeResult.textContent = `Travel time from ${planetA} to ${planetB}: ${data.travelTime} seconds`;
        });
    }
});
