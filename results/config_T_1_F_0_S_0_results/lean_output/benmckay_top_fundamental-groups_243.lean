import Mathlib

/-- Let F : [0,1] × X → Y be a homotopy and write f_t(·) = F(t, ·). Let x₀, x₁ ∈ X and set y₀ = f_0(x₀), y₁ = f_1(x₁). Let x : [0,1] → X be a path from x₀ to x₁, and define y : [0,1] → Y by y(t) = F(t,x(t)), a path from y₀ to y₁. Define isomorphisms x_* : π₁(X,x₀) → π₁(X,x₁) and y_* : π₁(Y,y₀) → π₁(Y,y₁) by
    x_*([γ]) = [x.symm * γ * x],
    y_*([δ]) = [y.symm * δ * y].
  Then the induced homomorphisms on fundamental groups satisfy
    y_* ∘ (f_0)_* = (f_1)_* ∘ x_* : π₁(X,x₀) → π₁(Y,y₁).
-/
theorem homotopy_naturality_ext
  (X Y : TopCat)
  (f₀ f₁ : X ⟶ Y)
  (H : Homotopy f₀ f₁)
  (x₀ x₁ : X)
  (x : Path x₀ x₁)
  (y : Path (f₀ x₀) (f₁ x₁)) :
  -- the following expresses the equality of the two induced maps on π₁
  (fundamental_group_map (y : _ ) ∘ (continuous_map.to_fun f₀).map) =
    ((continuous_map.to_fun f₁).map ∘ fundamental_group_map (x : _ )) := by sorry
