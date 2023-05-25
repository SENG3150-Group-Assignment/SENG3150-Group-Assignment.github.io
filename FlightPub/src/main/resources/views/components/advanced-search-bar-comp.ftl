<div class="card bg-light text-white w-75 p-3">
            <div class="card-body p-2 text-center">
              <form action="advanced_search.html">
                <div class="row">
                  <div class="form-outline col-md-3 form-white pe-2">
                    <input
                      type="text"
                      id="location"
                      class="form-control form-control-lg"
                      placeholder="From"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="text"
                      id="destination"
                      class="form-control form-control-lg"
                      placeholder="To"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="start-date"
                      class="form-control form-control-lg"
                      placeholder="Start Date"
                    />
                  </div>

                  <div class="form-outline col-md-3 form-white px-2">
                    <input
                      type="date"
                      id="End Date"
                      class="form-control form-control-lg"
                      placeholder="End Date"
                    />
                  </div>
                </div>
                
                <div class="row py-3">
                  <div class="form-outline col-md-2 form-white px-2">
                    <select id="trip-type" class="form-select">
                      <option value="return">One Way</option>
                      <option value="round-trip">Round Trip</option>
                    </select>
                  </div>

                  <div class="col-md-2">
                    <select class="form-select" aria-label="Class">
                      <option selectd>Choose Class</option>
                      <option value="economy">Economy</option>
                      <option value="business">Business</option>
                      <option value="first-class">First Class</option>
                    </select>
                  </div>

                  <div class="col-md-2">
                    <select class="form-select" aria-label="Maximum Stopovers">
                      <option selected>Maximum Stopovers</option>
                      <option value="0">Non-stop</option>
                      <option value="1">1 stopover</option>
                      <option value="2">2 stopovers</option>
                      <option value="3">3 stopovers</option>
                    </select>
                  </div>

                  <div class="form-outline col-lg-3 form-white px-2">
                    <div class="input-group">
                      <button type="button" class="btn btn-outline-secondary minus-btn">-</button>
                      <input type="text" id="passengers" class="form-control form-control-lg" value="1">
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