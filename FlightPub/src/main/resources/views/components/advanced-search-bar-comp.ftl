<div class="card bg-light text-white w-75 p-3">
  <div class="card-body p-2 text-center">
    <form action="/search" method="post">
      <div class="row">
        <div class="form-outline col-md-3 form-white pe-2">
          <input
            type="text"
            id="location"
            name="location"
            class="form-control form-control-lg"
            placeholder="From"
            <#if searchData.location??>
              value=${searchData.location}
            </#if>
          />
        </div>

        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="text"
            id="destination"
            name="destination"
            class="form-control form-control-lg"
            placeholder="To"
            <#if searchData.destination??>
              value=${searchData.destination}
            </#if>
          />
        </div>

        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="date"
            id="start-date"
            name="startDate"
            class="form-control form-control-lg"
            placeholder="Start Date"
            <#if searchData.startDate??>
              value=${searchData.startDate}
            </#if>
          />
        </div>

        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="date"
            id="End Date"
            name="endDate"
            class="form-control form-control-lg"
            placeholder="End Date"
            <#if searchData.endDate??>
              value=${searchData.endDate}
            </#if>
          />
        </div>
      </div>
      
      <div class="row py-3">
        <div class="form-outline col-md-2 form-white px-2">
          <select id="trip-type" name="tripType" class="form-select">
            <option value="one-way">One Way</option>
            <option value="round-trip"
            <#if (searchData.tripType!"one-way") == "round-trip">
              selected
            </#if>
            >Round Trip</option>
          </select>
        </div>

        <div class="col-md-2">
          <select class="form-select" aria-label="Class" name="flightClass" id="flightClass">
            <option>Choose Class</option>
            <option value="economy"
            <#if (searchData.flightClass!"none") == "economy">
              selected
            </#if>
            >Economy</option>
            <option value="business"
            <#if (searchData.flightClass!"none") == "business">
              selected
            </#if>
            >Business</option>
            <option value="first-class"
            <#if (searchData.flightClass!"none") == "first-class">
              selected
            </#if>
            >First Class</option>
          </select>
        </div>

        <div class="col-md-2">
          <select class="form-select" aria-label="Maximum Stopovers" id="maxStops" name="maxStops">
            <option selected>Maximum Stopovers</option>
            <option value="0"
            <#if (searchData.maxStops!99) == 0>
              selected
            </#if>
            >Non-stop</option>
            <option value="1"
            <#if (searchData.maxStops!99) == 1>
              selected
            </#if>
            >1 stopover</option>
            <option value="2"
            <#if (searchData.maxStops!99) == 2>
              selected
            </#if>
            >2 stopovers</option>
            <option value="3"
            <#if (searchData.maxStops!99) == 3>
              selected
            </#if>
            >3 stopovers</option>
          </select>
        </div>

        <div class="col-md-1">
          <label for="passengerCount" class="form-label" style="color: black">Count:</label>
        </div>
        <div class="col-md-2">
          <div class="col-md-3 input-group">
            <button type="button" class="btn btn-outline-secondary minus-btn">-</button>
            <input type="text" id="passengerCount" name="passengerCount" class="form-control" 
            value="${searchData.passengerCount!1}">
            <button type="button" class="btn btn-outline-secondary plus-btn">+</button>
          </div>
        </div>

        <div class="col-md-2 text-center">
          <button
            class="btn btn-outline-dark btn-lg px-5"
            type="submit"
            >
            Search
          </button>
        </div>
      </div>
    </form>
  </div>
</div>

<#--  For the plus/minus buttons  -->
<script>
  document.addEventListener("DOMContentLoaded", function() {
    var minusButton = document.querySelector(".minus-btn");
    var plusButton = document.querySelector(".plus-btn");
    var input = document.getElementById("passengerCount");

    minusButton.addEventListener("click", function() {
      if (parseInt(input.value) > 1) {
        input.value = parseInt(input.value) - 1;
      }
    });

    plusButton.addEventListener("click", function() {
      input.value = parseInt(input.value) + 1;
    });
  });
</script>