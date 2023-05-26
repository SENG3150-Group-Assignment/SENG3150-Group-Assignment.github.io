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
            required />
        </div>
        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="text"
            id="destination"
            name="destination"
            class="form-control form-control-lg"
            placeholder="To"
            required />
        </div>
        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="date"
            id="startDate"
            name="startDate"
            class="form-control form-control-lg"
            placeholder="Start Date"
            required />
        </div>
        <div class="form-outline col-md-3 form-white px-2">
          <input
            type="date"
            id="endDate"
            name="endDate"
            class="form-control form-control-lg"
            placeholder="End Date"
            required />
        </div>
      </div>
      <div class="row px-2 pt-4">
        <div class="col-md-12 text-center">
          <a
            class="btn btn-outline-dark btn-lg px-5"
            href="/home/wizard">Wizard</a>
          <button
            class="btn btn-outline-dark btn-lg px-5"
            type="submit">
            Search
          </button>
        </div>
      </div>
    </form>
  </div>
</div>