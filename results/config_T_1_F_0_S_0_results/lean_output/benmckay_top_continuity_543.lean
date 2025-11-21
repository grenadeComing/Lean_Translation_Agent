import Mathlib

/-
Let X = \overline{B} \subset \mathbb{R}^n be the closed unit ball, A = \partial X its boundary sphere,
and Y \subset \mathbb{R}^{n+1} the unit sphere. Define f : X -> Y by
  f(x) = (cos(π ‖x‖), sin(π ‖x‖) * (x / ‖x‖)) for x ≠ 0 and f(0) = (1,0).

The statement below asserts that f is injective on the interior X \ A and that f maps
every point of A to the single point (-1,0) ∈ Y.
-/

open scoped Real

def Rn (n : ℕ) := EuclideanSpace ℝ (Fin n)

def X (n : ℕ) : Set (Rn n) := { x | ‖x‖ ≤ 1 }

def A (n : ℕ) : Set (Rn n) := { x | ‖x‖ = 1 }

/-- We represent R^{n+1} as the product ℝ × R^n. -/
def Rn1 (n : ℕ) := ℝ × Rn n

def Y (n : ℕ) : Set (Rn1 n) := { p | p.1 ^ 2 + ‖p.2‖ ^ 2 = 1 }

/-- The map f as in the statement. For x ≠ 0 it is (cos(π‖x‖), sin(π‖x‖) • (‖x‖⁻¹ • x)), and f 0 = (1,0). -/
def f (n : ℕ) (x : Rn n) : Rn1 n :=
  if x = 0 then (1, 0) else (Real.cos (Real.pi * ‖x‖), (Real.sin (Real.pi * ‖x‖)) • (‖x‖⁻¹ • x))

theorem benmckay_top_continuity_543 (n : ℕ) :
  Set.InjOn (f n) (X n \ A n) ∧ ∀ a, a ∈ A n → f n a = (-1, (0 : Rn n)) := by sorry
