import Mathlib

open Set ENNReal

variable (n : ℕ)

/-- Closed axis-aligned rectangle (product of closed intervals) in ℝ^n. -/
def closed_rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  Set.pi (univ : Set (Fin n)) fun i => Icc (a i) (b i)

/-- Open axis-aligned rectangle (product of open intervals) in ℝ^n. -/
def open_rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  Set.pi (univ : Set (Fin n)) fun i => Ioo (a i) (b i)

/-- Volume of an axis-aligned rectangle given by endpoints `a` and `b`, as an extended nonnegative real. -/
def box_volume (a b : Fin n → ℝ) : ENNReal :=
  ENNReal.ofReal (∏ i, (b i - a i))

/-- Outer measure m* defined by coverings by countably many open rectangles: for a set `s` we
    take the infimum of the sums of volumes of countably many open rectangles that cover `s`. -/
def m_star (s : Set (Fin n → ℝ)) : ENNReal :=
  Inf ( ( { (∑' (k : ℕ), box_volume (a k) (b k)) |
            ∃ (a : ℕ → (Fin n → ℝ)) (b : ℕ → (Fin n → ℝ)),
              (∀ k i, a k i < b k i) ∧ s ⊆ ⋃ k, open_rectangle (a k) (b k) } : Set ENNReal) )

/-- If `R` is a closed rectangle in ℝ^n then its outer measure (defined via countable open-rectangle
    coverings) equals its volume. -/
theorem m_star_closed_rectangle_eq_volume (a b : Fin n → ℝ) (h : ∀ i, a i ≤ b i) :
  m_star n (closed_rectangle n a b) = box_volume n a b := by sorry