import Mathlib

open Real

variable {n : ℕ} (hn : 1 ≤ n)

/-- Euclidean space R^n and R^{n+1} modelled as Fin n → ℝ and ℝ × (Fin n → ℝ). -/
abbrev E := Fin n → ℝ
abbrev F := ℝ × E

/-- Closed unit ball X ⊆ R^n, its boundary A, and the unit sphere Y ⊆ R^{n+1}. -/
def X : Set E := Metric.closedBall (0 : E) 1
def A : Set E := Metric.sphere (0 : E) 1
def Y : Set F := Metric.sphere (0 : F) 1

/-- The map f : X → Y defined by
    f(0) = (1, 0) and for x ≠ 0,
    f(x) = (cos (π ‖x‖), sin (π ‖x‖) • (x / ‖x‖)). -/
def f (x : E) : F :=
  if x = 0 then (1, 0) else (Real.cos (π * ‖x‖), Real.sin (π * ‖x‖) • ((‖x‖)⁻¹ • x))

/-- f is injective on the interior (the open unit ball) of X, and f maps every boundary point to
    the single antipodal point (-1,0) ∈ Y. -/
theorem benmckay_top_continuity_543 :
  (∀ x y : E, x ∈ Metric.ball (0 : E) 1 → y ∈ Metric.ball (0 : E) 1 → f x = f y → x = y)
  ∧ (∀ a : E, a ∈ A → f a = (-1 : ℝ, 0 : E)) :=
by
  sorry
