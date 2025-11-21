import Mathlib

open Set

/-- A closed disk in the complex plane with center c and radius r. -/
def closed_disk (c : Complex) (r : ℝ) : Set Complex := fun z => ‖z - c‖ ≤ r

theorem jirilebl_ca_ca_13473 (U : Set Complex) (hU : IsOpen U) :
  ∃ (K : ℕ → Set Complex),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ (l : List (Complex × ℝ)),
      K n ⊆ { z | ∃ p, p ∈ l ∧ ‖z - p.fst‖ ≤ p.snd } ∧
      { z | ∃ p, p ∈ l ∧ ‖z - p.fst‖ ≤ p.snd } ⊆ interior (K (n+1))) := by sorry
