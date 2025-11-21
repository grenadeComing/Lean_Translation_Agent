import Mathlib

theorem jirilebl_ca_ca_19562 (z : Complex) (n : Nat) :
  ‖(Finset.sum (Finset.range (n + 1)) fun k => z ^ k / Complex.ofReal ((Nat.factorial k : ℝ))) - Complex.exp z‖
    ≤ (‖z‖ ^ (n + 1) / (Nat.factorial (n + 1) : ℝ)) * Real.exp ‖z‖ := by sorry
