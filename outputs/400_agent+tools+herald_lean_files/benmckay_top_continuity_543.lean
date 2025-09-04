import Mathlib

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- There exists a map f from the closed unit ball in E to ℝ × E with the stated properties:
    - f is injective on the interior {x | ‖x‖ < 1},
    - f maps every boundary point {x | ‖x‖ = 1} to the single point (-1,0).

  The explicit construction is omitted; this theorem only translates the informal statement. -/
theorem benmckay_top_continuity_543 :
  ∃ (f : {x : E // ‖x‖ ≤ 1} → ℝ × E),
    (∀ (x y : {x : E // ‖x‖ ≤ 1}) (hx : ‖(x : E)‖ < 1) (hy : ‖(y : E)‖ < 1),
       f x = f y → (x : E) = (y : E)) ∧
    (∀ (x : {x : E // ‖x‖ ≤ 1}) (h : ‖(x : E)‖ = 1),
       f x = Prod.mk (-1 : ℝ) (0 : E)) := by sorry
