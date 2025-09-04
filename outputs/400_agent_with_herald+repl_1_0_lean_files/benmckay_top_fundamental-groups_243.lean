import Mathlib

section fundamental_group_homotopy

variables {piX piY : Type _} (f0 f1 : piX → piY) (x_star : piX → piX) (y_star : piY → piY)

theorem y_star_comp_f0_eq_f1_comp_x_star : y_star ∘ f0 = f1 ∘ x_star := by sorry

end fundamental_group_homotopy
