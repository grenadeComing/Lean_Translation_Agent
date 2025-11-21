import Mathlib

open Matrix

def gl (n : ℕ) := Units (Matrix (Fin n) (Fin n) Real)

def sl (n : ℕ) : gl n → Prop := fun g => Matrix.det (↑g : Matrix (Fin n) (Fin n) Real) = 1

theorem sl_normal_in_gl (n : ℕ) : ∀ g h : gl n, sl n h → sl n (g * h * g⁻¹) := by sorry

theorem det_surjective_with_kernel_sl (n : ℕ) :
  ∃ (φ : gl n →* Units Real), Function.Surjective φ.toFun ∧ (∀ g, φ.toFun g = 1 ↔ sl n g) := by sorry
