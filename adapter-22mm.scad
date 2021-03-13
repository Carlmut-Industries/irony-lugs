module adapter() {
  translate([-1262.85, -738.75, 10])
  import("Swatch_Irony_belt_adapter.stl", center=true);
}

module adapter_front() {
    difference() {
        adapter();
        translate([0, -50, -50])
        cube([100, 100, 100]);
    }
}

module adapter_back() {
    difference() {
        adapter();
        translate([-100, -50, -50])
        cube([100, 100, 100]);
    }
}

// original-sized back
adapter_front();

// Scale the adapter
scale([1, 1.1, 1])
adapter_back();
