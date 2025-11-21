import Mathlib

variable (IsHolomorphicOn : Set ℂ → (ℂ → ℂ) → Prop)

def unit_disk : Set ℂ := { z : ℂ | ‖z‖ < 1 }

theorem schwarz_lemma {f : ℂ → ℂ}
  (h_holo : IsHolomorphicOn (unit_disk) f)
  (h_map : ∀ z ∈ unit_disk, ‖f z‖ < 1)
  (h0 : f 0 = 0) : ∀ z ∈ unit_disk, ‖f z‖ ≤ ‖z‖ := by sorry
