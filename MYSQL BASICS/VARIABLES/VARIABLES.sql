select @total = sum(price) from products;

delimiter //
begin

select *
from products;

end
// delimiter ;