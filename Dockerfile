FROM outlandish/sdw-php

COPY --from=composer:1.5 /usr/bin/composer /usr/bin/composer

CMD ["php", "-a"]
