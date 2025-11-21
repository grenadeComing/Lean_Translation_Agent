import Mathlib

open Complex Set

variable {Z : Set ℂ} (g : ℂ → ℂ) (hZ_open : IsOpen Z) (hZ_conn : IsConnected Z)
  (hg_holo : DifferentiableOn ℂ g Z)

def unit_circle : Set ℂ := { z | ‖z‖ = 1 }

def closed_disk : Set ℂ := { z | ‖z‖ ≤ 1 }

theorem exists_holomorphic_log_iff_nonvanishing_and_loops_extend :
  (∃ G : ℂ → ℂ, DifferentiableOn ℂ G Z ∧ ∀ z ∈ Z, Complex.exp (G z) = g z) ↔
  ((∀ z ∈ Z, g z ≠ 0) ∧
   (∀ γ : ℂ → ℂ, ContinuousOn γ unit_circle → γ '' unit_circle ⊆ Z →
     ∃ H : ℂ → ℂ, ContinuousOn H closed_disk ∧ (∀ z ∈ closed_disk, H z ≠ 0) ∧
       ∀ x ∈ unit_circle, H x = g (γ x))) := by sorry
