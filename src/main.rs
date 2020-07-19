#[link(name = "yolo")]
extern "C" {
    fn yolo() -> i32;
}

fn main() {
    let x: i32;
    unsafe {
        x = yolo();
    };
    println!("Rust calling C function Hello, world! YOLO = {}", x);
}
