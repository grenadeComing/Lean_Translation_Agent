import Mathlib

universe u

constant IsSerreFibration : ∀ (X Y : Type u) (f : X → Y), Prop

constant Fiber : ∀ (X Y : Type u) (f : X → Y) (y0 : Y), Type u

constant pi : ∀ (n : ℕ) (Z : Type u) (z0 : Z), Type u

constant LongExactSequenceOfHomotopyGroups : ∀ (F X Y : Type u) (f : X → Y) (x0 : X) (y0 : Y), Prop

/-- If f : X → Y is a Serre fibration, then the obvious maps on homotopy groups
    fit into the usual long exact sequence ... → π_n(F,x0) → π_n(X,x0) → π_n(Y,y0) → π_{n-1}(F,x0) → ... -/
theorem serre_fibration_long_exact_sequence {X Y : Type u} (f : X → Y)
  (h : IsSerreFibration X Y f) (y0 : Y) (x0 : X) (hx : f x0 = y0) :
  LongExactSequenceOfHomotopyGroups (Fiber X Y f y0) X Y f x0 y0 := by
  sorry
