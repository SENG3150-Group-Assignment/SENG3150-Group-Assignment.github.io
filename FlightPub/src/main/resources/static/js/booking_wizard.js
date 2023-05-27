document.getElementById("nextBtn").addEventListener("click", function () {
    const currentStep = document.querySelector(".step:visible");
    const nextStep = currentStep.nextElementSibling;
    currentStep.style.display = "none";
    nextStep.style.display = "block";
});

document.getElementById("prevBtn").addEventListener("click", function () {
    const currentStep = document.querySelector(".step:visible");
    const prevStep = currentStep.previousElementSibling;
    currentStep.style.display = "none";
    prevStep.style.display = "block";
});

document.getElementById("multiStepForm").addEventListener("submit", function (event) {
    event.preventDefault(); // Prevent form submission
    // Handle form submission or validation
});
